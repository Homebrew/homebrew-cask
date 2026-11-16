cask "dotnet-reactor" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "7.7.1.0"
  sha256 arm:          "a1b7ff8b7292477c81d85296d774cc576250e8ae2ba47137b0f50c233020426d",
         intel:        "8241eeee6567c5ee4feccb322207a0d5d54d99291e4290b9d7051249072aa792",
         x86_64_linux: "75063112fda125444089692b41db9b3b54d45288cf7dd7d9354457ca5cb87116"

  on_macos do
    disable! date: "2026-11-16", because: :fails_gatekeeper_check

    binary "dotNET_Reactor"
    binary "dotNET_Reactor.Console"

    zap trash: [
      "~/Library/Application Support/Eziriz/.NET Reactor",
      "~/Library/Preferences/dotNET_Reactor.plist",
    ]
  end
  on_linux do
    depends_on arch: :intel

    binary "dotNET_Reactor"

    zap :not_required
  end

  url "https://cdn-downloads.eziriz.com/dotnet_reactor_#{version.dots_to_underscores}_#{os}-#{arch}.zip"
  name ".NET Reactor"
  desc ".NET code protection and obfuscation tool"
  homepage "https://www.eziriz.com/dotnet_reactor.htm"

  livecheck do
    url "https://www.eziriz.com/reactor_download.htm"
    regex(/href=.*?dotnet[._-]reactor[._-]v?(\d+(?:[._]\d+)+)[._-]#{os}[._-]#{arch}\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end
end
