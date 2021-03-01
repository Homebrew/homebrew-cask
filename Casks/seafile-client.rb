cask "seafile-client" do
  version "8.0.0"
  sha256 "3c0b810457bf337b0dad9e6ed3169a6b03a1e3a94faa771d1b307f6bcb42a614"

  url "https://download.seadrive.org/seafile-client-#{version}.dmg",
      verified: "seadrive.org/"
  name "Seafile Client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    strategy :page_match
    regex(%r{href=.*?/seafile-client-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Seafile Client.app"
end
