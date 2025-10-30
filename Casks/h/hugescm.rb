cask "hugescm" do
  arch arm: "arm64", intel: "amd64"

  version "0.20.0"
  sha256 arm:   "0bfba4b27ce78f2f9952737795752be93970a1aebdc6c8c93da2b75f6cd30399",
         intel: "18edaa686841de999c3057ff87922553ac012de6601dadb393d821d2bcac31bc"

  url "https://github.com/antgroup/hugescm/releases/download/v#{version}/zeta-#{version}-darwin-#{arch}.tar.gz"
  name "HugeSCM - A next generation cloud-based version control system"
  desc "HugeSCM - A next generation cloud-based version control system"
  homepage "https://github.com/antgroup/hugescm"
        
  binary "zeta-#{version}-darwin-#{arch}/bin/hot"
  binary "zeta-#{version}-darwin-#{arch}/bin/zeta"
  binary "zeta-#{version}-darwin-#{arch}/bin/zeta-mc"
  postflight do
    prefix = ENV["HOMEBREW_PREFIX"]
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{prefix}/bin/hot"]
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{prefix}/bin/zeta"]
    system_command "xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{prefix}/bin/zeta-mc"]
  end

end
