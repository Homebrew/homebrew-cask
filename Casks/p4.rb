cask "p4" do
  version "2021.1,2179737"
  sha256 "17b0e75a900df7b5b4b560cb808a3ffbd1fd5ab7f6d784be7377b507d5df0f5c"

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
end
