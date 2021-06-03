cask "p4" do
  version "2021.1,2126753"
  sha256 "85c0d2f92b59564ea36a56a8f07b87aecf0b2806637e8b7d69d6edd0d79d6c40"

  url "https://cdist2.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015x86_64/p4"
  name "Perforce Helix Command-Line Client (P4)"
  desc "Use it to gain instant access to operations and complete control over the system"
  homepage "https://www.perforce.com/products/helix-core-apps/command-line-client"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    strategy :page_match do |page|
      page.scan(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: "perforce"
  depends_on macos: ">= :catalina"
  container type: :naked

  binary "bin.macosx1015x86_64", target: "p4"

  postflight do
    set_permissions "#{staged_path}/bin.macosx1015x86_64", "0755"
  end
end
