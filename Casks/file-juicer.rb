cask "file-juicer" do
  version "4.88"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  appcast "https://echoone.com/filejuicer/download"
  name "File Juicer"
  desc "Extract images from PDF, PowerPoint, Word, Excel and other Files"
  homepage "https://echoone.com/filejuicer/"

  app "File Juicer.app"
end
