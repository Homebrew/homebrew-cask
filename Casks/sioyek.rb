cask "sioyek" do
  version "1.1.0"
  sha256 "9b4e0d30bcc49a9006fc96d45b540fef8a8c17061b8875f01d41c31219ca0c2b"

  url "https://github.com/ahrm/sioyek/releases/download/v#{version}/sioyek-release-mac.zip",
      verified: "github.com/ahrm/sioyek/"
  name "Sioyek"
  desc "PDF viewer designed for reading research papers and technical books"
  homepage "https://sioyek.info/"

  container nested: "build/sioyek.dmg"

  app "sioyek.app"

  zap trash: [
    "~/Library/Application Support/sioyek",
    "~/Library/Saved Application State/com.yourcompany.sioyek.savedState",
  ]
end
