cask "font-uoqmunthenkhung" do
  version "1.197"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/uoqmunthenkhung/UoqMunThenKhung-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "UoqMunThenKhung"
  homepage "https://fonts.google.com/specimen/UoqMunThenKhung"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "UoqMunThenKhung",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "UoqMunThenKhung-Regular.ttf"

  # No zap stanza required
end
