cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "Mac 64bits" : "Apple Silicon"

  version "16.0"

  if Hardware::CPU.intel?
    sha256 "651986b16223cb9a08b65fb5c57f4547d92623bb40485c24e7257c5a115da5eb"
  else
    sha256 "6dd2f9a0c36b2480fbebc08e4b05bed6a3809002820bc9416e2a1696f8c302b0"
  end
  
  pkg "Shutter Encoder #{version} #{arch}.pkg"
  url "https://www.shutterencoder.com/#{pkg.gsub(" ", "%20")}"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  uninstall pkgutil: "com.paulpacifico.shutterencoder",
            quit:    "com.paulpacifico.shutterencoder"
end
