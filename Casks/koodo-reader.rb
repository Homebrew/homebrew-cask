cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.1"

  if Hardware::CPU.intel?
    sha256 "216a391fd3c5992d47178829b82e6984a6760e13f70db30b1c47c92930cc819e"
  else
    sha256 "70d8d6a462002205406e5278474891bec468fcd632b0149210ca2b00597b7a08"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
