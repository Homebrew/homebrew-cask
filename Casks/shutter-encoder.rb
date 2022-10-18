cask "shutter-encoder" do
  arch arm: "Apple Silicon", intel: "Mac 64bits"

  version "16.4"
  sha256 arm:   "76aae44ad3da31a2a333f4d4fe6f0e0bf3c6ad59dcf04595498524230b5479b7",
         intel: "f62a4ebde07dd6495037c41d96c6b75f0eb31c91b5e48e1e06c945cd7f33f974"

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
