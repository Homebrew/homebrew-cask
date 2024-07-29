cask "gactions" do
  version "3"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.google.com/gactions/v#{version}/release/gactions-sdk_darwin.tar.gz"
  name "gactions"
  desc "CLI tool for Google Actions SDK"
  homepage "https://developers.google.com/assistant/conversational"

  disable! date: "2024-07-17", because: :no_longer_available

  binary "gactions-sdk/gactions"

  caveats do
    requires_rosetta
  end
end
