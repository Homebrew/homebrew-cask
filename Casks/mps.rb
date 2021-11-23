cask "mps" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-aarch64"

  version "2021.2.2,212.5284.1234"

  if Hardware::CPU.intel?
    sha256 "11e80c58039c5e3ea4c49a7aecd697494d12c84d5704a80d9ae1456d4cf8eda2"
  else
    sha256 "e0060854417b86e62362bf53d2b72efae6abcedf4a5dc18ad65b442ce6ffb51b"
  end

  url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-#{arch}.dmg"
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
