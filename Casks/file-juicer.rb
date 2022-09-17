cask "file-juicer" do
  version "4.97"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  name "File Juicer"
  desc "Extract images from PDF, PowerPoint, Word, Excel and other Files"
  homepage "https://echoone.com/filejuicer/"

  livecheck do
    url "https://echoone.com/filejuicer/latestversion"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "File Juicer.app"
end
