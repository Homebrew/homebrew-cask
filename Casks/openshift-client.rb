cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.0"
  sha256 arm:   "24bf7ac65d55927cf5a8a4989ea45932b465abec434fe07886a3252f4a558053",
         intel: "63f2d9ca8308ef4b01b91e47edc14e5952518844042d38dc7177a0016b9950cd"

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
