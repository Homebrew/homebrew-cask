cask "p4" do
  arch arm: "12arm64", intel: "1015x86_64"

  version "2023.2,2535420"
  sha256 arm:   "00264b87bf4ebb26286bc089fc0686d913d921b9b39bc67bf436af3702ac18b1",
         intel: "8a24804e48247104a1e59e99620e57bbe456018fef84b2dff911175908057017"

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
