cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.16"
  sha256 arm:   "cd44b6a49346f5098427485d876b259bb3414edbf220bc15681dad85468cb692",
         intel: "9c9e420fdb84ae1d2b0bc9b8b250bea69b6d7ae990429577538a39d78a7bed6a"

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
