cask "dotnet-reactor" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  version "7.7.2.0"
  sha256 arm:          "d9e57da2b8fcc016073cbb1dc45f48a673e95cb92b28aa672a0038d0976909a7",
         intel:        "dbab7361117fd7562e3f8eb5eb4a832837190edb9aaccbc9140c7b06f9d06d81",
         x86_64_linux: "967321acfaa559d0aad8d355cdd571f925d6903e7c25d8177265bad35e6a6c3e"

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
