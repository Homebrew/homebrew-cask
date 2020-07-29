cask "flow-e" do
  version "1.0.0"
  sha256 "01a041b20cb2e6490e64fea45a336e79c86bfa1b8a65d99448d63077864dbfc8"

  url "https://flow-e.com/resources/desktop_files/Flow-e-#{version}-mac.zip"
  appcast "https://flow-e.com/download-desktop"
  name "Flow-e"
  homepage "https://flow-e.com/"

  app "Flow-e.app"
end
