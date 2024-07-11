cask "gactions" do
  version "3"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.google.com/gactions/v#{version}/release/gactions-sdk_darwin.tar.gz"
  name "gactions"
  desc "CLI tool for Google Actions SDK"
  homepage "https://developers.google.com/assistant/conversational"

  livecheck do
    url "https://developers.google.com/assistant/conversational/quickstart"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)*)/release/gactions[._-]sdk[._-]darwin\.t}i)
  end

  binary "gactions-sdk/gactions"

  caveats do
    requires_rosetta
  end
end
