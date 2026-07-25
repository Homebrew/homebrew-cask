cask "arm-performance-libraries" do
  version "26.01.1"
  sha256 "412a1cc6aa7575c325055152dbe45a4be15915b827dfbf266c0d6edc38482d24"

  install_suffix="#{version}_flang-21"
  url "https://developer.arm.com/-/cdn-downloads/permalink/Arm-Performance-Libraries/Version_#{version}/arm-performance-libraries_#{version}_macOS.tgz",
      user_agent: :curl
  name "Arm Performance Libraries"
  desc "Optimized standard core math libraries for Arm processors"
  homepage "https://developer.arm.com/tools-and-software/arm-performance-libraries"

  livecheck do
    url :homepage,
        user_agent: :curl
    regex(/Version[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on arch: :arm64

  installer script: {
    executable: "armpl_#{install_suffix}_install.sh",
    args:       ["-y"],
    sudo:       true,
  }

  uninstall delete: [
              "/opt/arm/arm-performance-libraries_#{install_suffix}",
              "/opt/arm/armpl_#{install_suffix}",
            ],
            rmdir:  "/opt/arm"

  # No zap stanza required

  caveats do
    license "https://developer.arm.com/documentation/109686/latest"
    "You may need to source /opt/arm/armpl_#{install_suffix}/armpl_env_vars.sh in order to use these libraries."
  end
end
