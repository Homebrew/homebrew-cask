cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.21"
  sha256 arm:   "fd778aaae991c23422f16698b22c6998185319de7c5df4e896f95df03b8bed5a",
         intel: "dc517239cd893fd61d58f2128c3836e8e7bd074a4a7490d0d84a80e8f550183f"

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
