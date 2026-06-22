cask "maui-sherpa" do
  version "0.11.2"
  sha256 "a49dfe86206d629f7a98bfa8b28e48d88fbf163419bab3b12cd6680a93cac8b4"

  url "https://github.com/Redth/MAUI.Sherpa/releases/download/v#{version}/MAUI-Sherpa.macos.zip"
  name "MAUI Sherpa"
  desc "Desktop app for managing .NET MAUI developer tools"
  homepage "https://github.com/Redth/MAUI.Sherpa"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MAUI Sherpa.app"

  zap trash: "~/.maui-sherpa"
end
