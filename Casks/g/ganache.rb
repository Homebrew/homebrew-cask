cask "ganache" do
  version "2.7.1"
  sha256 "e2e0fd17d4e2e3e42b007bf2e6f88a99da49d9d20cc8443b857f8183d64e76fe"

  url "https://github.com/trufflesuite/ganache-ui/releases/download/v#{version}/Ganache-#{version}-mac.dmg",
      verified: "github.com/trufflesuite/ganache-ui/"
  name "Ganache"
  desc "Personal blockchain for Ethereum development"
  homepage "https://trufflesuite.com/ganache/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Ganache.app"

  zap trash: [
    "~/Library/Application Support/Ganache",
    "~/Library/Logs/Ganache",
    "~/Library/Preferences/org.trufflesuite.ganache.plist",
    "~/Library/Saved Application State/org.trufflesuite.ganache.savedState",
  ]

  caveats do
    <<~EOS
      See https://consensys.io/blog/consensys-announces-the-sunset-of-truffle-and-ganache-and-new-hardhat for information
    EOS
  end
end
