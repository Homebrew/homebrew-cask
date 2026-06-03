cask "dotnet-reactor" do
  version "7.5.0.0"
  sha256 "cb3ec024fd7ae2690c72b538b5f6810288825205636e03db520dead0b0fbb2c2"

  url "https://www.eziriz.com/downloads/dotnet_reactor_#{version.dots_to_underscores}_macos-x64_signed.zip"
  name ".NET Reactor"
  desc ".NET code protection and obfuscation tool"
  homepage "https://www.eziriz.com/dotnet_reactor.htm"

  livecheck do
    url "https://www.eziriz.com/reactor_download.htm"
    regex(/href=.*?dotnet[._-]reactor[._-]v?(\d+(?:[._]\d+)+)[._-]macos/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  binary "dotNET_Reactor"
  binary "dotNET_Reactor.Console"

  zap trash: [
    "~/Library/Application Support/Eziriz/.NET Reactor",
    "~/Library/Preferences/dotNET_Reactor.plist",
  ]
end
