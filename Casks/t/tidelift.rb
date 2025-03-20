cask "tidelift" do
  version "1.16.0"
  sha256 "3c91b8921cfff2c559c9d757b3f57ef910a51e1ba8b84958b9a98a6f60056499"

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
