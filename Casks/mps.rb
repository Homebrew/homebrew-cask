cask "mps" do
  version "2021.1.3,211.7628.1405"

  if Hardware::CPU.intel?
    sha256 "bef5c7d35f4bc8b0ce08edf3ccf76ef3ab8e0cda05f26fda970085e844b5842f"

    url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-macos.dmg"
  else
    sha256 "2a8b71040a093229e14f171ee9a9f7bf181a156841bb8beca584b2a8896490a5"

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
