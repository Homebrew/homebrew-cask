cask "dotnet-reactor" do
  version "7.5.0.0"
  sha256 "12ce2e1a3fa761a24b21982a15a470947389081d48feb72e684f45e3523b13b0"

  url "https://cdn-downloads.eziriz.com/dotnet_reactor_#{version.dots_to_underscores}_macos-x64.zip"
  name ".NET Reactor"
  desc ".NET code protection and obfuscation tool"
  homepage "https://www.eziriz.com/dotnet_reactor.htm"

  livecheck do
    url "https://www.eziriz.com/reactor_history.htm"
    regex(/\b(\d+(?:\.\d+){3})\b/)
  end

  binary "dotNET_Reactor"
  binary "dotNET_Reactor.Console"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", staged_path]
  end
end
