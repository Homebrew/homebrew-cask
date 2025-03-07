cask "tidelift" do
  version "1.15.3"
  sha256 "3ec2ec0442b71ddeb2a8e4455b900ce3ba1af9c7aa6849653a4f8f72a1e51523"

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
