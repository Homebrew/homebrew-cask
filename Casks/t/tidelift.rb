cask "tidelift" do
  version "1.13.54"
  sha256 "e535a3714a930f599b61dba9fde5c93212df201682eb9f1389e3cfda91f5d412"

  url "https://download.tidelift.com/cli/#{version}/darwin_homebrew/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/darwin/tidelift}i)
  end

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
