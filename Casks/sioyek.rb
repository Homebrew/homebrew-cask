cask "sioyek" do
  version "1.3.0"
  sha256 "5e60b2d438f72db22b6400dab790015f480765ed5d2f5cc3697b63faada90f29"

  url "https://github.com/ahrm/sioyek/releases/download/v#{version}/sioyek-mac.zip",
      verified: "github.com/ahrm/sioyek/"
  name "Sioyek"
  desc "PDF viewer designed for reading research papers and technical books"
  homepage "https://sioyek.info/"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "build/sioyek.dmg"

  app "sioyek.app"

  zap trash: [
    "~/Library/Application Support/sioyek",
    "~/Library/Saved Application State/com.yourcompany.sioyek.savedState",
  ]
end
