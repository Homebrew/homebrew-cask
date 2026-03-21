cask "font-rocknroll-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rocknrollone/RocknRollOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "RocknRoll One"
  homepage "https://fonts.google.com/specimen/RocknRoll+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "RocknRoll One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RocknRollOne-Regular.ttf"

  # No zap stanza required
end
