cask "sioyek" do
  version "1.2.0"
  sha256 "79974b0f419047046ad15f42410a8197a905ec22c0b293454f8f98323828a9d2"

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
