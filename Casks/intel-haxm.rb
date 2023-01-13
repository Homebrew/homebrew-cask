cask "intel-haxm" do
  version "7.8.0"
  sha256 "4d30b68eccd31a8534d976e884de8e728746bf1d568912af23c894c8818481c6"

  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip"
  name "Intel HAXM"
  desc "Hardware-assisted virtualization engine (hypervisor)"
  homepage "https://github.com/intel/haxm"

  depends_on macos: ">= :sierra"
  depends_on arch: :x86_64

  installer script: {
    executable: "silent_install.sh",
    sudo:       true,
  }

  uninstall pkgutil: "com.intel.kext.haxm.*",
            script:  {
              sudo:         true,
              must_succeed: true,
              executable:   "silent_install.sh",
              args:         ["-u"],
            }

  caveats do
    kext
  end
end
