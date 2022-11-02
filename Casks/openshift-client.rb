cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.13"
  sha256 arm:   "a754ac4ef929fee9aa4753c7307fb503a82daf742c04031d78d199a613547ff3",
         intel: "02172f9f2f0e95ce912e57879e8ba8be5cb5619c446b7f6ca356ca4ae221723c"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
