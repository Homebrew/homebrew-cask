cask "font-hanamina" do
  version "2017.09.04,68253"
  sha256 "571cd4a09ae7da0c642d640fc2442c050aa450ebb0587a95cdd097d41a9c9572"

  url "https://osdn.dl.osdn.jp/hanazono-font/#{version.csv.second}/hanazono-#{version.csv.first.no_dots}.zip",
      verified: "osdn.dl.osdn.jp/hanazono-font/"
  name "HanaMinA"
  homepage "https://fonts.jp/hanazono/"

  font "HanaMinA.ttf"
  font "HanaMinB.ttf"

  # No zap stanza required
end
