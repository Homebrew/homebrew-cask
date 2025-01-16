cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.13"
  sha256 arm:   "b1c4d98ab7d09be7653ddb73910351d3bfbd980570ace091f89d52bd3d8b9a06",
         intel: "35012031b4d8f9e02210c502e10023534fee29476be760b0552656cbb2e99f3e"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
