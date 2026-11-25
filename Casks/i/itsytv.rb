cask "itsytv" do
  version "1.9.1"
  sha256 "da7da41f38c5c6b78f89706a3cbf862e817661630d8fce9ef5084a4fd08d8fff"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg"
  name "Itsytv"
  desc "Menu bar app for controlling your Apple TV"
  homepage "https://itsytv.app/"

  depends_on macos: :sonoma

  app "Itsytv.app"

  zap trash: [
    "~/Library/Application Scripts/com.itsytv.app",
    "~/Library/Containers/com.itsytv.app",
  ]
end
