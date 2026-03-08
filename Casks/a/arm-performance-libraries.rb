cask "arm-performance-libraries" do
  version "26.01"
  install_suffix="#{version}_flang-21"
  sha256 "f69da819aad0faf4817df1503b270832ea67d2decec6240dda99c9891dd2bc2f"

  url "https://developer.arm.com/-/cdn-downloads/permalink/Arm-Performance-Libraries/Version_#{version}/arm-performance-libraries_#{version}_macOS.tgz",
      user_agent: :curl
  name "Arm Performance Libraries"
  desc "Optimized standard core math libraries for Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/Arm%20Performance%20Libraries"

  livecheck do
    url :homepage,
        user_agent: :curl
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
