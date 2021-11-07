cask "mps" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-aarch64"

  version "2021.2.1,212.5284.1175"

  url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "c2387d84c974582ac959e90d17baef331254f1dbda41579fb333228ab9e9d6dd"
  else
    sha256 "f393a5cf68ae79b229cbbcb640a7fd64fb10cd5958ad45a04af3fa4fc4d10427"
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
