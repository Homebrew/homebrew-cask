cask "flotato" do
  version :latest
  sha256 :no_check

  # vendors.paddle.com/download/product/558359 was verified as official when first introduced to the cask
  url "https://vendors.paddle.com/download/product/558359"
  name "Flotato"
  desc "Tool to turn any web page into a desktop app"
  homepage "https://flotato.com/"

  app "Flotato.app"

  zap trash: [
    "/Applications/Flotato Help.app",
    "~/Library/Application Support/Flotato",
    "~/Library/WebKit/com.mortenjust.flotato",
  ]
end
