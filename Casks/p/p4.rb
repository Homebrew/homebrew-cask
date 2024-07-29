cask "p4" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  arch arm: "12arm64", intel: "1015x86_64"

  version "2024.1,2625008"
  sha256 :no_check

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
