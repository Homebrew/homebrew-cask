cask "quickboot" do
  version "1.1-92"
  sha256 "5119e1113949baae165efc726b757d58a887743f1dc6ae8d03a978be7b5da4a3"

  url "https://buttered-cat.com/downloads/get/4/QuickBoot-#{version}.zip"
  name "QuickBoot"
  homepage "https://buttered-cat.com/product/quickboot/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/QuickBoot-(\d+(?:\.\d+)*-\d+)\.zip}i)
  end

  app "QuickBoot.app"
end
