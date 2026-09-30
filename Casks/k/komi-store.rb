cask "komi-store" do
  version "1.9.2"

  on_arm do
    sha256 "df371a7c4c821125810dacaab04a7fb0bcd40162bc996b798caf21c586fd0f0f"

    url "https://github.com/komi-store/komi-store/releases/download/v#{version}/Komi-Store-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "2d95aa11a273528978cb2dad427e592d0705bb8e67c099a91a3216677abc4315"

    url "https://github.com/komi-store/komi-store/releases/download/v#{version}/Komi-Store-#{version}-x64.dmg"
  end

  name "Komi Store"
  desc "App store for open-source software releases"
  homepage "https://www.komistore.app/"

  app "Komi Store.app"
end
