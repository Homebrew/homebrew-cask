cask "juicebar" do
  version "1.0.66"
  sha256 "748346b6d32dc35e59465f5f3742761d58ca4e07cb797c007c4480801526753a"

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name "JuiceBar"
  desc "Marketplace for Resolume"
  homepage "https://get-juicebar.com/"

  app "JuiceBar.app"
end
