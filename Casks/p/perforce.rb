cask "perforce" do
  arch arm: "12arm64", intel: "1015x86_64"

  version "2025.1,2810567"
  sha256 arm:   "cbf1d651fcc30a7e3144793bd66dd06ee6ca2a33601337b4802a85004c49a3d6",
         intel: "4e1d13baa4f7ade0e219524e4450f8bb3c69d14c193d84b0190acf1c9d36865a"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx#{arch}/helix-core-server.tgz"
  name "Perforce Helix Core Server"
  name "Perforce Helix Command-Line Client (P4)"
  name "Perforce Helix Broker (P4Broker)"
  name "Perforce Helix Versioning Engine (P4D)"
  name "Perforce Helix Proxy (P4P)"
  desc "Version control"
  homepage "https://www.perforce.com/"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    regex(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "p4"
  depends_on macos: ">= :sierra"

  binary "p4"
  binary "p4broker"
  binary "p4d"
  binary "p4p"

  # No zap stanza required

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
