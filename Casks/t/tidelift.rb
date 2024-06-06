cask "tidelift" do
  version "1.13.33"
  sha256 "fbf361c264f9598fc815bf114b25c2bb21c9d5f026c472c08aa8e7dce735ef0f"

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
end
