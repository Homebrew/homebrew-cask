cask "sioyek" do
  version "1.4.0"
  sha256 "3049c03c62b02896ef8bf027281168c439f01a341b586a92a286e7449218d56d"

  url "https://github.com/ahrm/sioyek/releases/download/v#{version}/sioyek-release-mac.zip",
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
