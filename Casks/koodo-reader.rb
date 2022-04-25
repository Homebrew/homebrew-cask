cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.3"

  if Hardware::CPU.intel?
    sha256 "fc5b491c5f800de6855288dfa3ef796970ced5c082dcf324f4ace84fc3d3a0cb"
  else
    sha256 "8e11951614d196971f8c7e3cad37531464c40b11f32860d5ec295eacd77f14c0"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
