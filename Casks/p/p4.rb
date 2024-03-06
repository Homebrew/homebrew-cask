cask "p4" do
  arch arm: "12arm64", intel: "1015x86_64"

  version "2023.2,2535420"
  sha256 arm:   "c825bb42d24312184b7a5f937d78e9b549392b10ecf0248375a2bc7aa5486e3b",
         intel: "818d345df408b6a01693c0a501d80cba4473d90719e6910ccaa08380b6c13dd6"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx#{arch}/p4"
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

  binary "bin.macosx#{arch}", target: "p4"

  # No zap stanza required
end
