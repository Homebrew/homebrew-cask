cask "dotnet-reactor" do
  version "7.5.0.0"
  sha256 "cb3ec024fd7ae2690c72b538b5f6810288825205636e03db520dead0b0fbb2c2"

  url "https://www.eziriz.com/downloads/dotnet_reactor_#{version.dots_to_underscores}_macos-x64_signed.zip"
  name ".NET Reactor"
  desc ".NET code protection and obfuscation tool"
  homepage "https://www.eziriz.com/dotnet_reactor.htm"

  livecheck do
    url "https://www.eziriz.com/reactor_history.htm"
    regex(/\b(\d+(?:\.\d+){3})\b/)
  end

  binary "dotNET_Reactor"
  binary "dotNET_Reactor.Console"
end
