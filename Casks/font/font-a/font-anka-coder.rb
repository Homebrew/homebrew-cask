cask "font-anka-coder" do
  version "1.100"
  sha256 "3c3cd48ed57796cd490a2c22614c73e32ad202790d10e9af3d632cd985c0e172"

  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/anka-coder-fonts/AnkaCoder.#{version}.zip",
      verified: "storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/anka-coder-fonts/"
  name "Anka/Coder"
  homepage "https://code.google.com/p/anka-coder-fonts/"

  livecheck do
    url "https://storage.googleapis.com/storage/v1/b/google-code-archive/o/v2%2Fcode.google.com%2Fanka-coder-fonts%2Fdownloads-page-1.json?alt=media"
    regex(/^AnkaCoder[._-]v?(\d+(?:\.\d+)+)\.zip$/i)
    strategy :json do |json, regex|
      json["downloads"]&.map do |item|
        match = item["filename"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  font "AnkaCoder-b.ttf"
  font "AnkaCoder-bi.ttf"
  font "AnkaCoder-i.ttf"
  font "AnkaCoder-r.ttf"

  # No zap stanza required
end
