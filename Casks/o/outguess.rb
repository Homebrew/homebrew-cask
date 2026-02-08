cask "outguess" do
  version "1.1.6"
  sha256 :no_check

  url "https://www.rbcafe.com/download/outguess.zip",
      user_agent: :browser
  name "Outguess"
  desc "Steganography tool to hide a document in an image"
  homepage "https://www.rbcafe.com/software/outguess/"

  # The zip file URL is consistently unreachable in CI despite working locally
  disable! date: "2026-02-08", because: :unreachable

  app "Outguess.app"

  zap trash: [
    "~/Library/Application Support/com.rbcafe.Outguess",
    "~/Library/Saved Application State/com.rbcafe.Outguess.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
