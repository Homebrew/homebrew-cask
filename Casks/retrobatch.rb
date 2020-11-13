cask "retrobatch" do
  version "1.4.3"
  sha256 "6584140a86300383a179edcbf06343f2a6131b93a72b65fdcb70e4e1e98457ea"

  url "https://flyingmeat.com/download/Retrobatch.zip"
  appcast "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
  name "Retrobatch"
  homepage "https://flyingmeat.com/retrobatch/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
