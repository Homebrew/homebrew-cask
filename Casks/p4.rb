cask "p4" do
  version "2023.1,2442900"
  sha256 "34d31f351badc9d6cfe1a2da894289d04f7e9f6cf9f2075d88619146ebcb38ab"

  url "https://cdist2.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015x86_64/p4"
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
  depends_on macos: ">= :high_sierra"
  container type: :naked

  binary "bin.macosx1015x86_64", target: "p4"

  # No zap stanza required
end
