cask "p4" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.2,2535420"

  on_arm do
    sha256 "00264b87bf4ebb26286bc089fc0686d913d921b9b39bc67bf436af3702ac18b1"

    url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx12#{arch}/p4"

    binary "bin.macosx12#{arch}", target: "p4"
  end
  on_intel do
    sha256 "8a24804e48247104a1e59e99620e57bbe456018fef84b2dff911175908057017"

    url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015#{arch}/p4"

    binary "bin.macosx1015#{arch}", target: "p4"
  end

  name "Perforce Helix Command-Line Client (P4)"
  desc "Use it to gain instant access to operations and complete control over the system"
  homepage "https://www.perforce.com/products/helix-core-apps/command-line-client"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    regex(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "perforce"
  depends_on macos: ">= :sierra"
  container type: :naked

  # No zap stanza required
end
