cask "mps" do
  version "2021.1.1,211.7442.1291"

  if Hardware::CPU.intel?
    sha256 "286451f1691f4e94313ab04b4e37dc106b2c119efc9cd4cf50aa8cbe56540b72"

    url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-macos.dmg"
  else
    sha256 "b15c68cf43d89554f8f8272310a4ef0032479d2ec69863153c7603056456e258"

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
