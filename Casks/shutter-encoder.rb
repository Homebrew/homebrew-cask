cask "shutter-encoder" do
  arch = Hardware::CPU.intel? ? "Mac 64bits" : "Apple Silicon"

  version "16.2"

  if Hardware::CPU.intel?
    sha256 "0b303ded4c58ddad0cc40cc31963041eabc374f63d9b0aa6284b3883eab5c82e"
  else
    sha256 "59af85baa47c37c4ebd5e6bd244ff8473e5960187fb90496109d03f3338ef2ad"
  end

  url "https://www.shutterencoder.com/Shutter%20Encoder%20#{version}%20#{arch.gsub(" ", "%20")}.pkg"
  name "Shutter Encoder"
  desc "Video, audio and image converter"
  homepage "https://www.shutterencoder.com/"

  livecheck do
    url "https://www.shutterencoder.com/changelog.txt"
    regex(/^\s*Version\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Shutter Encoder #{version} #{arch}.pkg"

  uninstall pkgutil: "com.paulpacifico.shutterencoder",
            quit:    "com.paulpacifico.shutterencoder"
end
