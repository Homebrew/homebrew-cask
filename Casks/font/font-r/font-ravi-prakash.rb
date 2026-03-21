cask "font-ravi-prakash" do
  version "1.0.4"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/raviprakash/RaviPrakash-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ravi Prakash"
  homepage "https://fonts.google.com/specimen/Ravi+Prakash"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ravi Prakash",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RaviPrakash-Regular.ttf"

  # No zap stanza required
end
