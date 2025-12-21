cask "arm-performance-libraries" do
  version "25.07.1"
  install_suffix="#{version}_flang-20"
  sha256 "f6f69249933e78153bbe31ef9649c8c7cd003a1f4823c252634209f74f62a28c"

  url "https://developer.arm.com/-/cdn-downloads/permalink/Arm-Performance-Libraries/Version_#{version}/arm-performance-libraries_#{version}_macOS.tgz",
      user_agent: :curl
  name "Arm Performance Libraries"
  desc "Optimized standard core math libraries for Arm processors"
  homepage "https://developer.arm.com/downloads/-/arm-performance-libraries"

  livecheck do
    url :homepage
    regex(/Version[._-]v?(\d+(?:\.\d+)+)/i)
  end

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
