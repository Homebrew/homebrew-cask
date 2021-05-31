cask "mps" do
  version "2021.1,211.7142.1222"

  if Hardware::CPU.intel?
    sha256 "3bf2b747cbaea592a9fee7b099df4243016071bc1af911b8e62e991d9e5bd129"

    url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-macos.dmg"
  else
    sha256 "f8b120ac2e240f59857b888582a2cb59a7d7026210db68b0567434b248403283"

    url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-macos-aarch64.dmg"
  end

  name "JetBrains MPS"
  desc "Create your own domain-specific language"
  homepage "https://www.jetbrains.com/mps/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["MPS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MPS #{version.major_minor}.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "mps") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/MPSSamples.#{version.before_comma.major_minor}",
    "~/Library/Application Support/MPS#{version.before_comma.major_minor}",
    "~/Library/Caches/MPS#{version.before_comma.major_minor}",
    "~/Library/Logs/MPS#{version.before_comma.major_minor}",
    "~/Library/Preferences/MPS#{version.before_comma.major_minor}",
  ]
end
