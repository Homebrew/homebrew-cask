cask "dotnet-reactor" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "7.7.0.0"
  sha256 arm:          "885a12b712b5e22b46da1b4f9a504978a2245f6a72ac8d2c8f9aaf00338f06df",
         intel:        "db6b9edf1f7e5f40d431547f59f9bb8c0448a8fe62f785e344dbd2e511bb8dc6",
         x86_64_linux: "93f483b224ba9761c09d4b21d215984249fa6109e05f667bacc82309f63cfb8d"

  on_macos do
    binary "dotNET_Reactor.Console"

    zap trash: [
      "~/Library/Application Support/Eziriz/.NET Reactor",
      "~/Library/Preferences/dotNET_Reactor.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    zap :not_required
  end

  url "https://cdn-downloads.eziriz.com/dotnet_reactor_#{version.dots_to_underscores}_#{os}-#{arch}.zip"
  name ".NET Reactor"
  desc ".NET code protection and obfuscation tool"
  homepage "https://www.eziriz.com/dotnet_reactor.htm"

  livecheck do
    url "https://www.eziriz.com/reactor_download.htm"
    regex(/href=.*?dotnet[._-]reactor[._-]v?(\d+(?:[._]\d+)+)[._-]#{os}/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  binary "dotNET_Reactor"
end
