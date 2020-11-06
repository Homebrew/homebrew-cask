cask "qlmobi" do
  version "0.5"
  sha256 "1035181685c3ed974bd45ade8f22717c62142ff6a75cf679128f8fb50ef26833"

  url "https://github.com/bfabiszewski/QLMobi/releases/download/v#{version}/QLMobi.qlgenerator.zip"
  appcast "https://github.com/bfabiszewski/QLMobi/releases.atom"
  name "QLMobi"
  homepage "https://github.com/bfabiszewski/QLMobi"

  qlplugin "QLMobi.qlgenerator"
end
