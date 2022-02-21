cask "picgo" do
  version "2.3.0"
  sha256 "e10afb2267a1c9bb48c4ef57a9efe0f7096e6cf209d424312d84dc544d239b0f"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "PicGo.app"
end
