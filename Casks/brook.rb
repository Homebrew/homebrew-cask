cask "brook" do
  version "20200801"
  sha256 "709b91ef127a0b0583ac7c9d665b5963b21aa922fcfe97ae0ac26414969ff11d"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast "https://github.com/txthinking/brook/releases.atom"
  name "Brook"
  homepage "https://github.com/txthinking/brook"

  app "Brook.app"
end
